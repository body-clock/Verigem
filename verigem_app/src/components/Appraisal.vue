<template>
  <div class="card mt-3" style="max-width: 540px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="@/assets/rolex.jpg" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">{{ brand }} {{ item_type }}</h5>
          <span class="badge rounded-pill bg-success" v-if="status === 'Complete'">{{ status }}</span>
          <span class="badge rounded-pill bg-warning" v-if="status === 'Pending'">{{ status }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['brand', 'item_type', 'client_notes', 'appraiser_notes', 'status', 'decision'],
  name: "Appraisal"
}
</script>

<style scoped>

</style>