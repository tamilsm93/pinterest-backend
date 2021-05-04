 <template>

 <div class="register-form">
     <h1> Welcome to  the pinterest clone </h1>
     <form  class="box" v-on:click="formSubmit" id="signup">
         <div class="columns">
             <div class="column m-md-6">
        <div class="field">  
         <div class="control">
             <label class="label"> Firstname </label>
             <input class="input"  v-model="user.first_name" type="text"  placeholder="enter the firstname" >
         </div>
        </div>
         </div>
       <div class="column m-md-6">
       <div class="field">
         <div class="control">
             <label class="label"> lastname </label>
             <input  class="input" v-model="user.last_name" type="text" placeholder="enter the lastname" >
         </div>
        </div>
        </div>
         </div>
         <div class="columns">
            <div class="column m-md-6">
         <div class="field">
            <div class="control">
             <label class="label"> Phone number </label>
             <input  class="input" v-model="user.phone" type="tel"  placeholder="9123456789" >
           </div>
         </div>
         </div>
         <div class="column m-md-6">
         <div class="field">
         <div class="control">
             <label class="label"> Email </label>
             <input class="input" v-model="user.email" type="email"  placeholder="abcd@gmail.com" >
          </div>
         </div>
         </div>
         </div>
          <label class="label"> Date of birth </label>
         <input  v-model="user.dob" class="input" type="date">
         <div class="columns">
            <div class="column m-md-5">
         <div class="field">
            <div class="control">
             <label class="label"> Password </label>
             <input class="input" v-model="user.password" type="password" >
         </div>
        </div>
            </div>
              <div class="column m-md-4">
            <div class="field">
          <div class="control">
             <label class="label"> Confirm password </label>
             <input class="input" v-model="user.confirm_password" type="password" >
         </div>
      </div>
         </div>
         </div>
         <button type="button" v-on:click="setAccount"   class="button is-info"> Create account </button>
         <flash-message class="myCustomClass"></flash-message>
     </form>
     
  </div>
  
</template>

<script>
 import axios from 'axios'
import Vue from 'vue';
import FlashMessage from '@smartweb/vue-flash-message';
Vue.use(FlashMessage);

//    Vue.component('multiselect', Multiselect)

export default {

    name: 'Signup',
    data() {
        return {
            user: {
               first_name: '',
               last_name: '',
               email: '',
               phone: '',
               password: '',
              confirm_password: '',
              dob: '',
              article_preferences: [],
            },    
        }
        
    },

    updated(){
           
           this.setAccount();
    },
    mounted() {
        this.formSubmit();
    },

        methods : {
          formSubmit() {
              axios.post('/users', this.user)
            .then(res => (this.user = res.data))
            .catch((error) => {
                console.log(error)
                })
                if(status) {
                        this.flashMessage.success({
                            title: 'Don\'t Warry',
                            message: 'Be Happy!',
                            time: 1000,
                            flashMessageStyle: {
                                backgroundColor: 'linear-gradient(#e66465, #9198e5)'
                            }
                        });
                    }
            },

            setAccount() {
                 if(this.user.length==1)
                { 
                    this.$router.push('/article')
                     
                }
            }
        },  
}
</script>



<style>

.register-form {
    margin-left: 450px;
    font-size: 30px;

}
</style>