 <template>

 <div class="register-form">
     <h1> Welcome to  the pinterest clone </h1>
     <form  class="box"  id="signup">
         <div class="columns">
             <div class="column m-md-6">
        <div class="field">  
         <div class="control">
             <label class="label"> Firstname </label>
             <input class="input"  v-model="first_name" type="text"  placeholder="enter the firstname" >
         </div>
        </div>
         </div>
       <div class="column m-md-6">
       <div class="field">
         <div class="control">
             <label class="label"> lastname </label>
             <input  class="input" v-model="last_name" type="text" placeholder="enter the lastname" >
         </div>
        </div>
        </div>
         </div>
         <div class="columns">
            <div class="column m-md-6">
         <div class="field">
            <div class="control">
             <label class="label"> Phone number </label>
             <input  class="input" v-model="phone" type="tel"  placeholder="9123456789" >
           </div>
         </div>
         </div>
         <div class="column m-md-6">
         <div class="field">
         <div class="control">
             <label class="label"> Email </label>
             <input class="input" v-model="email" type="email"  placeholder="abcd@gmail.com" >
          </div>
         </div>
         </div>
         </div>
          <label class="label"> Date of birth </label>
         <input  v-model="dob" class="input" type="date">
         <div class="columns">
            <div class="column m-md-5">
         <div class="field">
            <div class="control">
             <label class="label"> Password </label>
             <input class="input" v-model="password" type="password" >
         </div>
        </div>
            </div>
              <div class="column m-md-4">
            <div class="field">
          <div class="control">
             <label class="label"> Confirm password </label>
             <input class="input" v-model="confirm_password" type="password" >
         </div>
      </div>
         </div>
         </div>

       
         <button type="button"  v-on:click="formSubmit" class="button is-info"> Create account </button>
     </form>
     
  </div>
  
</template>

<script>
 import axios from 'axios'

export default {
    name: 'Signup',
    data() {
        return {
               first_name: '',
               last_name: '',
               email: '',
               phone: '',
               password: '',
              confirm_password: '',
              dob: '',
            }    
        
    },

    mounted() {
        this.formSubmit();
    },

   

        methods : {

           async formSubmit() {
                           await axios.post('/users',{

            first_name: this.first_name,
            last_name: this.last_name,
            email: this.email,
            phone: this.phone,
            password: this.password,
            confirm_password: this.confirm_password,
            dob: this.dob });

             this.$router.push('/login');
            
          
          },
        }
          
}
</script>



<style>

.register-form {
    margin-left: 450px;
    font-size: 30px;

}
</style>