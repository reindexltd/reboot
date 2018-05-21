{% extends "templates/base.volt" %}

{% block topbar %}{% endblock %}
{% block menubar %}{% endblock %}
{% block container %}fixed{% endblock %}

{% block header %}
  <ul class="list auto">
    {% include "partials/brand.volt" %}
  </ul>
{% endblock %}

{% block content %}
  <div id="content" class="no-top">

    <div id="page-title">{{ title }}</div>
    <hr class="fade-long">

    <div class="welcome">
      <div class="wrap">
        <img src="{{ dist }}/img/languages.jpg" width="530" height="261">
        <div class="error"><span>{{ code }}</span></div>
      </div>
      <p>
        {{ message }}
      </p>
    </div>

    {% if user.isMember() %}
      {% set username = user.username %}
    {% else %}
      {% set username = 'guest' %}
    {% endif %}

    <aside class="prompt gutter">
      <p>
        <span class="at">{{ username }}@pit</span>:<span class="tilde">~</span>$&nbsp;{{ method }}&nbsp;{{ url }}<br>
        <span class="at">{{ username }}@pit</span>:<span class="tilde">~</span>$&nbsp;Error&nbsp;{{ code }}&nbsp;({{ title }})<br>
        <span class="at">{{ username }}@pit</span>:<span class="tilde">~</span>$&nbsp;<blink>&#95</blink>
      </p>
    </aside>

  </div> <!-- /content -->
{% endblock %}