<template>
  <div class="modal fade" id="appraisalModal" tabindex="-1">
    <div class="modal-dialog">
      <form class="appraisalForm"
            @submit="onSubmit">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">New Appraisal</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="row g-2">
              <div class="col-md">
                <div class="form-floating">
                  <input type="text" v-model="brand" class="form-control" id="brandInputGrid" placeholder="e.g. Rolex, Gucci">
                  <label for="brandInputGrid">Brand</label>
                </div>
              </div>
              <div class="col-md">
                <div class="form-floating">
                  <input type="text" v-model="item_type" class="form-control" id="itemTypeInputGrid" placeholder="e.g. Watch, Bracelet">
                  <label for="itemTypeInputGrid">Item Type</label>
                </div>
              </div>
            </div>
            <div class="mt-2">
              <label for="clientNotes" class="form-label">Notes</label>
              <textarea class="form-control" v-model="client_notes" id="clientNotes" rows="3"></textarea>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" data-bs-dismiss="modal">Submit</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  name: 'AppraisalForm',
  data() {
    return {
      brand: "",
      item_type: "",
      client_notes: ""
    }
  },
  methods: {
    ...mapActions(['addAppraisal']),
    onSubmit(event) {
      event.preventDefault();
      this.addAppraisal([this.brand, this.item_type, this.client_notes])
      this.brand = "";
      this.item_type = "";
      this.client_notes = "";
    }
  }
}
</script>

<style scoped>

</style>