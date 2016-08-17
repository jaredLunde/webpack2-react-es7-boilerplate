import React from 'react'
import ReactDOM from 'react-dom'
import {AppContainer} from 'react-hot-loader'

import App from './App'


const root = document.getElementById('{{PKG_NAME}}')


ReactDOM.render((
  <AppContainer>
    <App/>
  </AppContainer>
), root)


if (module.hot) {
  module.hot.accept('./App', () => {
    const NextApp = require('./App').default
    ReactDOM.render((
      <AppContainer>
        <NextApp/>
      </AppContainer>
    ), root);
  })
}
