{% extends "templates/base.volt" %}

{% block topbar %}
  {% include "partials/navigation/topbar.volt" %}
{% endblock %}

{% block content %}
<div id="content" class="profile-top" style="background-image: url(//assets.worldwildlife.org/photos/1028/images/story_full_width/western-lowland-gorilla-heroHI_279168.jpg?1345535856); background-size: 1010px 410px; background-repeat: no-repeat;">
  {% include "partials/profile-header.volt" %}

  {% set controllerPath = '/' %}
  {% include "partials/navigation/tabs/profile/" %}
  {% include "partials/navigation/tabs.volt" %}
  {% include "partials/navigation/dropdowns.volt" %}

  {{ flash.output() }}

  <div class="column-left">

  </div> <!-- /column-left -->

  <div class="column-right">

    <div>
      <form action="//{{ serverName }}/logon/" id="signupform" name="signupform" method="post" role="form">
        <div class="half-gutter">
          {{ text_field("username", "placeholder": "Nome utente") }}
          {% if signup is defined %}<span class="error">{{ validation.first("username") }}</span>{% endif %}
        </div>
        <div class="half-gutter">
          {{ email_field("email", "placeholder": "E-mail") }}
          {% if signup is defined %}<span class="error">{{ validation.first("email") }}</span>{% endif %}
        </div>
        <div class="half-gutter">
          {{ password_field("password", "placeholder": "Password") }}
          {% if signup is defined %}<span class="error">{{ validation.first("password") }}</span>{% endif %}
        </div>
        <div class="half-gutter">
          {{ password_field("confirmPassword", "placeholder": "Ripeti la password") }}
          {% if signup is defined %}<span class="error">{{ validation.first("confirmPassword") }}</span>{% endif %}
        </div>
        <div class="align-right">
          <button type="submit" name="signup" value="signup" class="btn blue">Sign Up</button>
        </div>
      </form>
    </div>

  </div> <!-- /column-right -->

</div> <!-- /content -->
{% endblock %}

{% block script %}
<script>
  $('html, body').animate({scrollTop: '+=200px'}, 1);
</script>
{% endblock %}