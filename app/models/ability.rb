#!/bin/env ruby
# encoding: utf-8
class Ability
  include CanCan::Ability

  def initialize(user)
    @id=user.rol_ids
    @rol=Rol.find(@id[0])
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
    can :manage, :all if @rol.nombre == "administrador"
    can :manage, Request if @rol.nombre == "encargado"    
    cannot :acept, Request if @rol.nombre == "encargado"
    can :acept, Request if @rol.nombre == "Jefe de departamento" or
                           @rol.nombre == "Secretario académico"or
                           @rol.nombre == "Responsable"or
                           @rol.nombre == "Coordinación administrativa"or
                           @rol.nombre == "Contabilidad"or
                           @rol.nombre == "Evaluación"or
                           @rol.nombre == "Desarrollo y planeacion"or
                           @rol.nombre == "Compras"or
                           @rol.nombre == "Rectoria" or 
                           @rol.nombre == "administrador"
                           
    can :index, Request if @rol.nombre == "Jefe de departamento" or
                           @rol.nombre == "Secretario académico"or
                           @rol.nombre == "Responsable"or
                           @rol.nombre == "Coordinación administrativa"or
                           @rol.nombre == "Contabilidad"or
                           @rol.nombre == "Evaluación"or
                           @rol.nombre == "Desarrollo y planeacion"or
                           @rol.nombre == "Compras"or
                           @rol.nombre == "Rectoria" or 
                           @rol.nombre == "administrador"
                           
   can :show, Request if @rol.nombre == "Jefe de departamento" or
                           @rol.nombre == "Secretario académico"or
                           @rol.nombre == "Responsable"or
                           @rol.nombre == "Coordinación administrativa"or
                           @rol.nombre == "Contabilidad"or
                           @rol.nombre == "Evaluación"or
                           @rol.nombre == "Desarrollo y planeacion"or
                           @rol.nombre == "Compras"or
                           @rol.nombre == "Rectoria" or 
                           @rol.nombre == "administrador"
   can :rejected, Request if @rol.nombre == "Jefe de departamento" or
                           @rol.nombre == "Secretario académico"or
                           @rol.nombre == "Responsable"or
                           @rol.nombre == "Coordinación administrativa"or
                           @rol.nombre == "Contabilidad"or
                           @rol.nombre == "Evaluación"or
                           @rol.nombre == "Desarrollo y planeacion"or
                           @rol.nombre == "Compras"or
                           @rol.nombre == "Rectoria" or 
                           @rol.nombre == "administrador"

  end
end
