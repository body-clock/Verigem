<template>
  <div class="appraisals">
    <Appraisal
      v-for="appraisal in allAppraisals"
      :key="appraisal.id"
      :brand="appraisal.brand"
      :item_type="appraisal.item_type"
      :client_notes="appraisal.client_notes"
      :appraiser_notes="appraisal.appraiser_notes"
      :status="appraisal.status"
      :decision="appraisal.decision"
      ></Appraisal>
  </div>
</template>

<script>
import {mapActions, mapGetters} from 'vuex'
import Appraisal from '@/components/Appraisal';
export default {
  name: "Appraisals",
  components: { Appraisal },
  methods: {
    ...mapActions([
        'fetchAppraisals'
    ])
  },
  computed: {
    ...mapGetters([
        'allAppraisals'
    ])
  },
  created() {
    this.fetchAppraisals();
  }
}
</script>

<style scoped>
  .appraisals {
    display: flex;
    justify-content: center;
  }
</style>