// const xss = require('xss')
// const Treeize = require('treeize')

const SchoolsService = {
    getAllSchools(db) {
        return db
            .select('*')
            .from('davis_pn_schools')
    }
}

module.exports = SchoolsService