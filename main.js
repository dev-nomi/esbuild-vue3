import { createApp } from 'vue'
import App from './components/app.vue'

document.body.appendChild(document.createElement('root'))
export default () => {
  const app = createApp(App)
  app.mount('root')
}
