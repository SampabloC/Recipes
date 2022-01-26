import React from 'react';
import { Link } from "react-router-dom";

export default () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <h1 className="display-4">Food Recipes</h1>
      <p className="lead">
        A curated list of recipes for the best homemade meal and delicacies.
      </p>
      <hr className="my-4" />  { /* separación de contenido */}
      <Link
        to="/recipes"
        className="btn btn-lg custom-button"
        role="button"
      >
        View Recipes
      </Link>
    </div>"
  </div>
);
