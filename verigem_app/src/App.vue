<template>
  <div id="app">
    <div class="container">
      <h1>Appraisal Manager</h1>
      <Actions />
      <Appraisals />
      <AppraisalForm />
    </div>
  </div>
</template>

<script>
import Actions from '@/components/Actions';
import Appraisals from '@/components/Appraisals.vue';
import AppraisalForm from '@/components/AppraisalForm';

export default {
  name: "App",
  components: {
    AppraisalForm,
    Actions,
    Appraisals
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
