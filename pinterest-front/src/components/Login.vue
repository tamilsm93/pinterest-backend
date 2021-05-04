 <template>
   <div >
     <form  class="box is-centerered" id="login" v-on:click.prevent="setUser">
         <div class="field">
         <div class="control">
             <label class="label"> Email</label>
             <input class="input" v-model= "email" type="text"  placeholder="enter the email" id="email">
         </div>
         </div>
         <div class="field">
             <div class="control">
             <label class="label"> Password</label>
             <input class="input" v-model= "password" type="password" placeholder="*****" id="lastname">
         </div>
         </div>
         <button class="button is-info"   v-on:click="authenticateUser" > Login </button>
         <flash-message>
          </flash-message>
           </form>        
    </div>
</template>

<script>
import axios from 'axios'
import store from '@/store'
// import Vue from 'vue';
// import FlashMessage from '@smartweb/vue-flash-message';
// Vue.use(FlashMessage);


export default {
    name: 'Login',

    data() {
        return {
                email: '',
                password: '',
                phone: '',
                error: '',
             }      
    },


    updated() {
        this.setUser()
        
    },
    mounted() {
        this.authenticateUser()
    },
    methods: {
       setUser(){
            
           
            axios.post("/session/",{
                               email: this.email, password: this.password })
            .then(response =>(this.user_data = response.data))
            .catch((error) => {
              console.log(error)
          })  
        //   if(this.user_data.length==1) {
        //                 this.flashMessage.success({

        //                     message: 'logged in successfully!!',
        //                     time: 0.1,
        //                     flashMessageStyle: {
        //                         backgroundColor: 'linear-gradient(#e66465, #9198e5)'
        //                     }
        //                 });
        //             }
                
        
        
          store.commit("updateUser", {update_user: this.user_data})  

    },
       authenticateUser() { 
            if(this.user_data.length==1) {
             store.commit("setAuthentication", true)
             this.$router.replace({ path: '/home'})
              
          }
         }
    }
}
</script>

<style>
#login {
    margin-left: 450px;
}
</style>