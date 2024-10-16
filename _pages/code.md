---
layout: page
permalink: /code/
title: code
nav: true
nav_order: 4
---

I release code and documentation for each manuscript in github repositories. 

I also try to create easy-to-use data science tools for social scientists: 

- I developed the Python [construct-tracker](https://github.com/danielmlow/construct-tracker/) package to measure the psychological constructs in text of your choosing through a variety of methods. 

- I contributed to the [pydra-ml](https://github.com/nipype/pydra-ml) package that can train and compare many machine learning models, validated using bootstrapping (instead of cross-validation) and accelerated through parallel processing.


{% if site.data.repositories.github_users %}

## GitHub users

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for user in site.data.repositories.github_users %}
    {% include repository/repo_user.liquid username=user %}
  {% endfor %}
</div>

---

{% if site.repo_trophies.enabled %}
{% for user in site.data.repositories.github_users %}
{% if site.data.repositories.github_users.size > 1 %}

  <h4>{{ user }}</h4>
  {% endif %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% include repository/repo_trophies.liquid username=user %}
  </div>

---

{% endfor %}
{% endif %}
{% endif %}

{% if site.data.repositories.github_repos %}

## GitHub Repositories

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.liquid repository=repo %}
  {% endfor %}
</div>
{% endif %}
