<template>
<div>
  <h1>typescript 2</h1>
  <!-- example: 1 -->
  <!-- <ul>
    <li v-for="(item, index) in list" :key="index">{{ item }}</li>
  </ul> -->

  <!-- example: 2 -->
  <!-- <table>
    <thead>
        <tr>
            <th colspan="2">USER</th>
        </tr>
        <tr>
            <td>名前</td>
            <td>年齢</td>
        </tr>
    </thead>
    <tbody>
        <tr v-for="(user, index) in users" :key="index">
            <td>{{ user.name }}</td>
            <td>{{ user.age }}</td>
        </tr>
    </tbody>
  </table> -->

  <!-- example: 3 -->
  <!-- <ul>
    <li v-for="(userName, index) in userNameList" :key="index">{{ userName.name }}</li>
  </ul> -->
</div>
</template>

<script lang="ts">
import Vue from "vue"
import { users, list } from "../data.ts"

// // example: 2
// type User = {
//   name: string,
//   age: number,
// }

// // example: 3
// type UserName = Pick<User, "name">


export default  Vue.extend({
  data() {
    return {
      // list: [] as string[], // example: 1
      // users: [] as User[], // example: 2
      // userNameList: [] as UserName[] // example: 3
    }
  },
  mounted() {
    // this.list = list // example: 1
    // this.users = users // example: 2
    // this.userNameList = this.pickUserName() // example: 3
  },
  methods: {
    // // example: 3
    // pickUserName(): UserName[] {
    //   return (users as User[]).map((user) => ({ name: user.name }))
    // }
  }
})
</script>

<style>
table,
td {
    border: 1px solid #333;
}

thead {
    background-color: #333;
    color: #fff;
}
</style>
