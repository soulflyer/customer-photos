window.fbAsyncInit = function() {
    FB.init({
        appId      : '897493126927870',
        xfbml      : true,
        version    : 'v2.2'
    });
};

(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

var buttonPressed = function(){
    postImage("http://soulflyer.co.uk/photos/medium/2014/09/04-Bute/DIW_8563.jpg");
};

var postImage = function(imageURL){
    console.log('Attempting to log in to FaceBook');
    var message = 'Picture by Soulflyer Photos http://soulflyer.com\nDiving with Rainbow Divers: http://divevietnam.com';
    FB.login(function(response){
        if (response.authResponse){
            var access_token = FB.getAuthResponse()['accessToken'];
            console.log('Acess Token = ' + access_token);
            FB.api('me/photos', 'post', { message: message, url: imageURL}, function(response){
                if (!response || response.error){
                    alert('error posting to facebook');
                }else{
                    alert('Posted pic to Facebook');
                }
            });
        } else {
            console.log('User cancelled login');
        }
    }, {scope: 'publish_actions'});
};
