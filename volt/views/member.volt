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
      <ul class="list gutter">
      {% endif %}
        <li style="width: 50%;">
          <article id="{{ entry.id }}">
            <hr class="fade-short">
            <ul class="list item-info">
              <li>REP 8.896&nbsp;&nbsp;</li>
              <li>
                <i class="icon-group"></i>&nbsp;570&nbsp;&nbsp;
                <i class="icon-male"></i><i class="icon-male small"></i><i class="icon-male mini"></i>&nbsp;892
              </li>
            </ul>
            <section class="item-content">
              <div class="ghost half-gutter">
                <a class="avatar" href="{{ url }}"><img class="img-polaroid" src="{{ member.gravatar }}&s=150" /></a>
                <!-- <a class="item-img" href=""><img class="img-polaroid" src="http://lorempixel.com/g/300/150/technics/"></a> -->
                <a class="item-title" href="{{ url }}">{{ member.firstName~''~member.lastName }}</a>
                <div class="item-excerpt">{{ member.headline }}</div>
              </div>
            </section>
          </article>
        </li>
      {% if loop.last %}
        {% for i in 1..modulus  %}
        <li style="width: 25%;"></li>
        {% endfor  %}
      </ul>

      <hr>
      {% elseif (modulus == 0) %}
      </ul>

      <hr>

      <ul class="list gutter">
      {% endif %}
      {% elsefor %}
      <div class="alert alert-info">Siamo spiacenti, la ricerca non ha prodotto alcun risultato.</div>
    {% endfor %}
    {% include "partials/pagination.volt" %}
  {% endif %}
  </div>
{% endblock %}