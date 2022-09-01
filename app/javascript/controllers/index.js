// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MatchSubscriptionController from "./match_subscription_controller"
application.register("match-subscription", MatchSubscriptionController)

import SwipePetsController from "./swipe_pets_controller"
application.register("swipe-pets", SwipePetsController)
