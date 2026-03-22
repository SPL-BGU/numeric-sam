; PolyCraft advanced domain

(define (domain PolyCraft)

    (:requirements :strips :typing :negative-preconditions :fluents :equality)

    (:types
        cell - object
    )

    (:constants
        crafting_table - cell
    )

    (:predicates
        (position ?c - cell)
        (crafting_table_cell ?c - cell)
        ; Map
        (tree_cell ?c - cell)
        (air_cell ?c - cell)
        (have_wooden_sword)
    )

    (:functions
        ; Items
        (count_log_in_inventory)
        (count_planks_in_inventory)
        (count_stick_in_inventory)
    )

    ; Actions
    (:action TP_TO
        :parameters (?from - cell ?to - cell)
        :precondition (and
            (position ?from)
            (not (= ?from ?to))
        )
        :effect (and
            (not (position ?from))
            (position ?to)
        )
    )

    (:action BREAK
        :parameters (?pos - cell)
        :precondition (and
            (position ?pos)
            (tree_cell ?pos)
        )
        :effect (and
            (not (tree_cell ?pos))
            (air_cell ?pos)
            (increase (count_log_in_inventory) 1)
        )
    )

    (:action CRAFT_PLANK
        :parameters ()
        :precondition (and
            (>= (count_log_in_inventory) 1)
        )
        :effect (and
            (decrease (count_log_in_inventory) 1)
            (increase (count_planks_in_inventory) 4)
        )
    )

    (:action CRAFT_STICK
        :parameters ()
        :precondition (and
            (> (count_planks_in_inventory) 1)
        )
        :effect (and
            (decrease (count_planks_in_inventory) 2)
            (increase (count_stick_in_inventory) 4)
        )
    )

    (:action CRAFT_WOODEN_SWORD
        :parameters (?pos - cell)
        :precondition (and
            (position ?pos)
            (not (position crafting_table))
            (>= (count_planks_in_inventory) 2)
            (>= (count_stick_in_inventory) 1)
        )
        :effect (and
            (not (position ?pos))
            (position crafting_table)
            (decrease (count_planks_in_inventory) 2)
            (decrease (count_stick_in_inventory) 1)
            (have_wooden_sword)
        )
    )

)
