RecordTagHelper
=================
[![Build Status](https://travis-ci.org/rails/record_tag_helper.svg?branch=master)](https://travis-ci.org/rails/record_tag_helper)

RecordTagHelper consists of code that was formerly a part of `ActionView`, but has been removed from core in Rails 5. This gem is provided to ensure projects that use functionality from `ActionView::Helpers::RecordTagHelper` have an appropriate upgrade path.

This gem provides methods for generating container tags, such as `div`, for your record. This is the recommended way of creating a container for your Active Record object, as it adds appropriate class and id attributes to that container. You can then refer to those containers easily by following that convention, instead of having to think about which class or id attribute you should use.

### Getting Started

Simply add `gem 'record_tag_helper', '~> 1.0'` to your Gemfile and run `bundle install`.

#### `content_tag_for`

Renders a container tag that relates to your Active Record Object.

For example, given `@article` is an object of type `Article`, you can do:

```html+erb
<%= content_tag_for(:tr, @article) do %>
  <td><%= @article.title %></td>
<% end %>
```

This will generate this HTML output:

```html
<tr id="article_1234" class="article">
  <td>Hello World!</td>
</tr>
```

You can also supply HTML attributes as an additional option hash. For example:

```html+erb
<%= content_tag_for(:tr, @article, class: "frontpage") do %>
  <td><%= @article.title %></td>
<% end %>
```

Will generate this HTML output:

```html
<tr id="article_1234" class="article frontpage">
  <td>Hello World!</td>
</tr>
```

You can pass a collection of Active Record objects. This method will loop through your objects and create a container for each of them. For example, given `@articles` is an array of two `Article` objects:

```html+erb
<%= content_tag_for(:tr, @articles) do |article| %>
  <td><%= article.title %></td>
<% end %>
```

Will generate this HTML output:

```html
<tr id="article_1234" class="article">
  <td>Hello World!</td>
</tr>
<tr id="article_1235" class="article">
  <td>Ruby on Rails Rocks!</td>
</tr>
```

#### `div_for`

This is actually a convenient method which calls `content_tag_for` internally with `:div` as the tag name. You can pass either an Active Record object or a collection of objects. For example:

```html+erb
<%= div_for(@article, class: "frontpage") do %>
  <td><%= @article.title %></td>
<% end %>
```

Will generate this HTML output:

```html
<div id="article_1234" class="article frontpage">
  <td>Hello World!</td>
</div>
```
