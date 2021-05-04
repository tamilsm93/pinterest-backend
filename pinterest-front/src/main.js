import Vue from 'vue'
import App from './App.vue'
import router from './router'
// import 'bootstrap/dist/css/bootstrap.min.css';
// import 'jquery/src/jquery.js'



// register globally



import store from '@/store'


Vue.config.productionTip = false


 


new Vue({
  store : store,
  router,
  render: h => h(App),
}).$mount('#app')

export default store

