import Vue from 'vue'
import Vuex from 'vuex'


Vue.use(Vuex)


export const store = new Vuex.Store(
    {
      state: {
        authenticated: false,
        logged_in: false,
          name: '',
          email: '',
          phone: '',
          update_user: '',
      },
      mutations: {
        setAuthentication(state, status) {
          state.authenticated = status;
              },
          updateUser(state, update_user)  {
            state.user = update_user
         
                }   
            }      
          
          }  
      )

      export default store