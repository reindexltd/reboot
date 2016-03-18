{% extends "templates/base.volt" %}

{% block content %}
  <div id="content">
  {% include "partials/navigation/tabs/member/" %}
  {% include "partials/navigation/tabs.volt" %}
  {% include "partials/navigation/dropdowns.volt" %}

  {% if members is defined %}
    {% for member in members %}
      {% set modulus = loop.index % 2 %}
      {% set url = '//'~domainName~'/'~member.username %}
      {% if loop.first %}
      <ul class="list fifty gutter">
      {% endif %}
        <li>
          <article id="{{ member.id }}">
            <hr class="fade-short">
            <ul class="list item-info">
              <li>{{ member.when }}</li>
              <li>
                <i class="icon-group" title="connections"></i>&nbsp;570&nbsp;&nbsp;
                <i class="icon-male" title="followers"></i><i class="icon-male small"></i><i class="icon-male mini"></i>&nbsp;892
              </li>
              <li><i class="icon-eye-open" title="views"></i>&nbsp;{{ member.hitsCount }}</li>
            </ul>
            <section class="item-content">
              <div class="ghost half-gutter">
                <a class="item-img avatar" href="{{ url }}"><img class="img-polaroid" src="{{ member.gravatar }}&s=150" /></a>
                <a class="item-title" href="{{ url }}">{{ member.firstName~' '~member.lastName }}</a>
                <a class="username" href="{{ url }}">{{ member.username }}</a>
                <!-- <a class="item-img" href=""><img class="img-polaroid" src="http://lorempixel.com/g/300/150/technics/"></a> -->
                <div class="item-meta">
                  <ul class="list">
                    <li><button class="btn blue">Follow</button></li>
                    <li><button class="btn blue">Connect</button></li>
                  </ul>
                  <div class="clear"></div>
                </div>
              </div>
            </section>
          </article>
        </li>
      {% if loop.last %}
        {% for i in 1..modulus  %}
        <li></li>
        {% endfor  %}
      </ul>

      {% elseif (modulus == 0) %}
      </ul>

      <ul class="list fifty gutter">
      {% endif %}
      {% elsefor %}
      <div class="alert alert-info">Siamo spiacenti, la ricerca non ha prodotto alcun risultato.</div>
    {% endfor %}
    {% include "partials/pagination.volt" %}
  {% endif %}
  </div>
{% endblock %}