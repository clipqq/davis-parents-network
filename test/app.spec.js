const app = require('../src/app')
const knex = require('knex')

function cleanTables(db) {
  return db.raw(
    `TRUNCATE
    davis_pn_comments,
    davis_pn_schools,
    davis_pn_users
    RESTART IDENTITY CASCADE;`
  )
}

describe('app', () => {
  let db

  // const {
  //   testUsers,
  //   testThings,
  //   testComments,
  // } = helpers.makeThingsFixtures()

  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: process.env.TEST_DB_URL,
    })
    app.set('db', db)
  })

  after('disconnect from db', () => db.destroy())

  before('cleanup', () => cleanTables(db))

  afterEach('cleanup', () => cleanTables(db))


  it('GET / responds with 200 containing "Hello, world!"', () => {
    return supertest(app)
      .get('/')
      .expect(200, 'Hello, world!')
  })

  context(`Given no things`, () => {
    it(`responds with 200 and an empty list`, () => {
      return supertest(app)
        .get('/schools')
        .expect(200, [])
    })
  })



})