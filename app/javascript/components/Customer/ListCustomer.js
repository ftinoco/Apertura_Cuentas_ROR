import React from "react";
import PropTypes from "prop-types";
import { withStyles } from '@material-ui/core/styles';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';

class ListCustomer extends React.Component {
  render () {
    return (
      <div>
        <h1>Hello {this.props.name}, </h1>

        <h3>Wow! This is your first react component!</h3>
      </div>
    );
  }
}

ListCustomer.propTypes = {
  name: PropTypes.string
};

export default ListCustomer;