<template>
  <div id="app">
    <div class="container">
      <h1>Appraisal Manager</h1>
      <Appraisals />
    </div>
  </div>
</template>

<script>
import Appraisals from '@/components/Appraisals.vue';

export default {
  name: "App",
  components: {
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
