(define (problem depotprob3) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate12)
	(at pallet1 depot1)
	(clear crate11)
	(at pallet2 depot2)
	(clear crate16)
	(at pallet3 distributor0)
	(clear crate17)
	(at pallet4 distributor1)
	(clear crate18)
	(at pallet5 distributor2)
	(clear crate14)
	(at truck0 depot1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 450)
	(at truck1 depot1)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 202)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at hoist6 distributor0)
	(available hoist6)
	(at hoist7 depot1)
	(available hoist7)
	(at hoist8 depot0)
	(available hoist8)
	(at hoist9 depot0)
	(available hoist9)
	(at hoist10 depot1)
	(available hoist10)
	(at hoist11 depot0)
	(available hoist11)
	(at hoist12 distributor0)
	(available hoist12)
	(at crate0 distributor2)
	(on crate0 pallet5)
	(= (weight crate0) 42)
	(at crate1 depot2)
	(on crate1 pallet2)
	(= (weight crate1) 82)
	(at crate2 distributor1)
	(on crate2 pallet4)
	(= (weight crate2) 77)
	(at crate3 depot0)
	(on crate3 pallet0)
	(= (weight crate3) 52)
	(at crate4 distributor2)
	(on crate4 crate0)
	(= (weight crate4) 72)
	(at crate5 depot1)
	(on crate5 pallet1)
	(= (weight crate5) 48)
	(at crate6 distributor1)
	(on crate6 crate2)
	(= (weight crate6) 53)
	(at crate7 distributor0)
	(on crate7 pallet3)
	(= (weight crate7) 50)
	(at crate8 distributor0)
	(on crate8 crate7)
	(= (weight crate8) 22)
	(at crate9 depot2)
	(on crate9 crate1)
	(= (weight crate9) 48)
	(at crate10 distributor0)
	(on crate10 crate8)
	(= (weight crate10) 67)
	(at crate11 depot1)
	(on crate11 crate5)
	(= (weight crate11) 91)
	(at crate12 depot0)
	(on crate12 crate3)
	(= (weight crate12) 84)
	(at crate13 depot2)
	(on crate13 crate9)
	(= (weight crate13) 94)
	(at crate14 distributor2)
	(on crate14 crate4)
	(= (weight crate14) 37)
	(at crate15 distributor1)
	(on crate15 crate6)
	(= (weight crate15) 58)
	(at crate16 depot2)
	(on crate16 crate13)
	(= (weight crate16) 82)
	(at crate17 distributor0)
	(on crate17 crate10)
	(= (weight crate17) 24)
	(at crate18 distributor1)
	(on crate18 crate15)
	(= (weight crate18) 7)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate11)
		(on crate1 pallet1)
		(on crate2 crate1)
		(on crate3 crate18)
		(on crate4 crate15)
		(on crate5 crate16)
		(on crate6 crate2)
		(on crate8 pallet5)
		(on crate9 crate4)
		(on crate10 crate12)
		(on crate11 crate8)
		(on crate12 pallet4)
		(on crate13 pallet0)
		(on crate14 crate10)
		(on crate15 crate13)
		(on crate16 pallet3)
		(on crate17 crate14)
		(on crate18 crate0)
	)
)

(:metric minimize (total-time)))
