import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "bootstrap";
import "../stylesheets/application";

require("@popperjs/core");
require("../stylesheets/application.scss");

//= require jquery
//= require bootstrap-sprockets

Rails.start();
Turbolinks.start();
ActiveStorage.start();
