# workshop-java-web-tdd

How to run ?

```
$mvnw clean package

```


#OCP Pipeline

Grant Jenkins Access to Projects

oc policy add-role-to-user edit system:serviceaccount:aa53ab63-tools:jenkins -n aa53ab63-dev

oc policy add-role-to-user edit system:serviceaccount:aa53ab63-tools:jenkins -n aa53ab63-uat

oc policy add-role-to-user edit system:serviceaccount:aa53ab63-tools:jenkins -n aa53ab63-prod




เข้าใช้งานที่ url http://localhost:8080/demo
