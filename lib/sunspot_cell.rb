require 'sunspot/rich_document'
require 'sunspot_cell/dsl/fields'
Sunspot::DSL::Fields.send(:include, SunspotCell::DSL::Fields)
require 'sunspot_cell/dsl/standard_query'
Sunspot::DSL::StandardQuery.send(:include, SunspotCell::DSL::StandardQuery)
require 'sunspot_cell/composite_setup'
Sunspot::CompositeSetup.send(:include, SunspotCell::CompositeSetup)
require 'sunspot_cell/type'
Sunspot::Type.send(:include, SunspotCell::Type)
require 'sunspot_cell/attribute_field'
Sunspot::AttributeField.send(:include, SunspotCell::AttributeField)
require 'sunspot_cell/setup'
Sunspot::Setup.send(:include, SunspotCell::Setup)
require 'sunspot_cell/field_factory'
Sunspot::FieldFactory.send(:include, SunspotCell::FieldFactory)
require 'sunspot_cell/indexer'
Sunspot::Indexer.send(:include, SunspotCell::Indexer)
