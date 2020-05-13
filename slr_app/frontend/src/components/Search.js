import React, { Component } from 'react';
import $ from 'jquery';
import '../css/query-builder.default.min.css';
import '../css/bla.css';
import 'jQuery-QueryBuilder';


class Search extends Component {
  componentDidMount() {
    $('#builder').queryBuilder({
      filters: [
        {
          id: 'titel',
          field: 'titel',
          label: {
            en: 'Titel'
          },
          icon: 'glyphicon glyphicon-user',
          value_separator: ',',
          type: 'string',
          optgroup: 'core',
          default_value: 'Mistic',
          size: 30,
          validation: {
            allow_empty_value: true
          },
          unique: true
        }
      ]
    });
  }

  render() {
    return (
      <div className="container">
        <div id="builder"></div>
      </div>
    );
  }
}

export default Search;
