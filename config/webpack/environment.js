const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  Rails: '@rails/ujs'
}))

environment.splitChunks()

module.exports = environment
