const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

environment.loaders.prepend('expose-jQuery', {
  test: require.resolve('jquery'),
  use: [{
    loader: 'expose-loader',
    options: 'jQuery'
  },{
    loader: 'expose-loader',
    options: '$'
  }]
})

module.exports = environment
