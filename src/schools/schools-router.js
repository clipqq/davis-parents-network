const express = require('express')
const SchoolsService = require('./schools-service')
// const { requireAuth } = require('../middleware/jwt-auth')

const schoolsRouter = express.Router()

schoolsRouter
  .route('/')
  .get((req, res, next) => {
    SchoolsService.getAllSchools(req.app.get('db'))
      .then(schools => {
        res.json(schools)
      })
      .catch(next)
  })

schoolsRouter
  .route('/:school_id')
//   .all(requireAuth)
  .all(checkSchoolExists)
  .get((req, res) => {
    res.json(SchoolsService.serializeSchool(res.school))
  })

schoolsRouter.route('/:school_id/reviews/')
//   .all(requireAuth)
  .all(checkSchoolExists)
  .get((req, res, next) => {
    SchoolsService.getReviewsForSchool(
      req.app.get('db'),
      req.params.school_id
    )
      .then(reviews => {
        res.json(SchoolsService.serializeSchoolReviews(reviews))
      })
      .catch(next)
  })

/* async/await syntax for promises */
async function checkSchoolExists(req, res, next) {
  try {
    const school = await SchoolsService.getById(
      req.app.get('db'),
      req.params.school_id
    )

    if (!school)
      return res.status(404).json({
        error: `School doesn't exist`
      })

    res.school = school
    next()
  } catch (error) {
    next(error)
  }
}

module.exports = schoolsRouter