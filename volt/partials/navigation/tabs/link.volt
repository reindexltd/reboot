{% extends "partials/navigation/tabs/index.volt" %}
{% block vars %}
  {% if etag is defined %}
    {% set resource = etag.name~'/links' %}
  {% else %}
    {% set resource = 'links' %}
  {% endif %}
  {% set buttonLabel = 'new' %}
  {% set buttonLink = '/links/add' %}
{% endblock %}