// if you add this repo as git submodule, change this to "share.typ/share.typ"
#import "share.typ": *

// variables
#let user_vars = ( 
  color: "b4befe",
)

// load post data from YAML
#let share_data = yaml("example.yml")

#let custom_rules(doc) = {
    // add custom document style rules here

    doc
}

#let share_init(doc, user_vars) = {
    doc = set_rules(doc, user_vars)
    doc = show_rules(doc)
    doc = custom_rules(doc)

    doc
}

#show: doc => share_init(doc, user_vars)

#share_header(share_data)
#share_content(share_data, user_vars)
#share_footer(share_data, user_vars)
