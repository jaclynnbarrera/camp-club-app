import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

require("stylesheets/application.scss");

//= require jquery
//= require bootstrap-sprockets

Rails.start();
Turbolinks.start();
ActiveStorage.start();
