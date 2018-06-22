process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')
const config = environment.toWebpackConfig()

// Make it work with Chrome Debugger
config.devtool = 'source-map'

module.exports = config
