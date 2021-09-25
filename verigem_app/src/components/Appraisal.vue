<template>
  <div class="card mb-3 mt-3" style="max-width: 540px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="@/assets/rolex.jpg" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">{{ title }}</h5>
          <span class="badge rounded-pill bg-success">Complete</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['title'],
  name: "Appraisal"
}
</script>

<style scoped>

</style>