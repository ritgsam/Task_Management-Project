<style>
    

body.login-body {
    /* background-color: lightblue; */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

form.shadow {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 300px;
    animation: fadeIn 0.5s ease-in-out;
}

form h3 {
    text-align: center;
    margin-bottom: 20px;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

input.form-control {
    transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}

input.form-control:focus {
    border-color: #007bff;
    box-shadow: 0 0 8px rgba(0, 123, 255, 0.6);
}

button.btn-primary {
    width: 100%;
    transition: background-color 0.3s ease-in-out;
}

button.btn-primary:hover {
    background-color: #0056b3;
}

.alert {
    margin-bottom: 15px;
}



/*  */

@keyframes move-background {
  from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}
@-webkit-keyframes move-background {
  from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

@-moz-keyframes move-background {    
	from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

    @-webkit-keyframes move-background {
	from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

.background-container{
	position: fixed;
	top: 0;
	left:0;
	bottom: 0;
	right: 0;
}

.stars {
 background: black url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/stars.png) repeat;
 position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	display: block;
  	z-index: 0;
}

.twinkling{
	width:10000px;
	height: 100%;
	background: transparent url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/twinkling.png") repeat;
	background-size: 1000px 1000px;
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    z-index: 2;
    
    -moz-animation:move-background 70s linear infinite;
  -ms-animation:move-background 70s linear infinite;
  -o-animation:move-background 70s linear infinite;
  -webkit-animation:move-background 70s linear infinite;
  animation:move-background 70s linear infinite;
	
}

.clouds{
	width:10000px;
	height: 100%;
	background: transparent url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/clouds_repeat.png") repeat;
	background-size: 1000px 1000px;
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    z-index: 3;

   -moz-animation:move-background 150s linear infinite;
  -ms-animation:move-background 150s linear infinite;
  -o-animation:move-background 150s linear infinite;
  -webkit-animation:move-background 150s linear infinite;
  animation:move-background 150s linear infinite;
}
img{
  height: 70vh;
  width:70vh;
  position: absolute;
  z-index: 3;
  right: 20px;
}


</style>