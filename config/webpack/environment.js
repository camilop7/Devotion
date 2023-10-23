const { environment } = require('@rails/webpacker')

const { VueLoaderPlugin } = require('vue-loader')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())

module.exports = environment
