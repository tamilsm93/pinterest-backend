<template>
     <div class="box">

    <label class="label"> Name</label>       
     <h1>  {{ this.profile.user["first_name"] }}  </h1>

    
    <label class="label"> Email</label>
   <p>   {{ this.profile.user["email"] }} </p>
    <p > {{this.profile.id}} </p>

 </div>

</template>

<script>
export default {
    name: 'Profile',
    data() {
        return {
            profile : {
            user: this.$store.state.user["update_user"][0]
            }
            
        }
    }



}
</script>

<style>
 .box {
     max-width: 500px;
     font-size: 25px;

 }
 /* p {
     font-size: 30px;
 } */
</style>