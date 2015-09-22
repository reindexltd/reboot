<nav class="topbar">
  <ul class="list">
    {% include "partials/brand.volt" %}
    <li>
      <form class="topbar-search" method="get" action="search.php" autocomplete="off" name="form_search">
        <input class="" type="search" placeholder="Search" autocomplete="on" id="keyword" name="keyword">
        <i class="icon-search"></i>
      </form>
    </li>
    <li><a class="link" href="//{{ domainName }}/tour/">Tour</a></li>
    <li><a class="link" href="//{{ domainName }}/aiuto/">Help</a></li>
    <li class="space"></li>
    {% if user.isMember() %}
      {% set userUri = '//'~domainName~'/'~user.username %}
    <li>
      <button class="btn btn-icon blue" data-dropdown="#dropdown-user"><img class="gravatar" src="{{ user.getGravatar(user.primaryEmail) }}&s=20"> {{ user.username }}</button>
      <div id="dropdown-user" class="dropdown dropdown-relative dropdown-anchor-right dropdown-tip">
        <ul class="dropdown-menu">
          <li><a href="{{ userUri }}"><i class="icon-home"></i>Timeline</a></li>
          <li class="dropdown-divider"></li>
          <li><a href="{{ userUri }}/profile/"><i class="icon-user"></i>Profile</a></li>
          <li><a href="{{ userUri }}/connections/"><i class="icon-group"></i>Connections</a></li>
          <li><a href="//{{ domainName }}/preferiti/"><i class="icon-star"></i>Favorits</a></li>
          <li><a href="{{ userUri }}/projects/"><i class="icon-github"></i>Projects</a></li>
          <li><a href="{{ userUri }}/activities/"><i class="icon-tasks"></i>Activities</a></li>
          <li class="dropdown-divider"></li>
          <li><button><i class="icon-wrench"></i>Settings</button></li>
          <li><button><i class="icon-gears"></i>Administration</button></li>
          <li class="dropdown-divider"></li>
          <li><a href="//{{ domainName }}/disconnect/"><i class="icon-signout"></i>Disconnect</a></li>
        </ul>
      </div>
    </li>
    <li><button class="btn btn-icon blue" title="messaggi e notifiche" data-dropdown="#dropdown-inbox"><i class="icon-inbox icon-large"></i></button></li>
    <li>
      <button class="btn btn-icon blue" title="collabora" data-dropdown="#dropdown-plus"><i class="icon-plus icon-large"></i></button>
      <div id="dropdown-plus" class="dropdown dropdown-relative dropdown-anchor-right dropdown-tip">
        <ul class="dropdown-menu">
          <li><button><i class="icon-link"></i>Add link</button></li>
          <li><button><i class="icon-question"></i>Ask a question</button></li>
          <li class="dropdown-divider"></li>
          <li><button><i class="icon-pencil"></i>Edit an article</button></li>
          <li><button><i class="icon-pencil"></i>Review a book</button></li>
          <li class="dropdown-divider"></li>
          <li><button><i class="icon-tag"></i>Add a tag</button></li>
        </ul>
      </div>
    </li>
    {% endif %}
  </ul>

  <!-- <a href="#" data-toggle="modal" data-target="#myModal">Registrati</a> -->
  <!-- Button trigger modal -->
</nav>