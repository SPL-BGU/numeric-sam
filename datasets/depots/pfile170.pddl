(define (problem depotprob44) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate19)
	(at pallet1 depot1)
	(clear crate15)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear crate12)
	(at pallet4 distributor1)
	(clear crate7)
	(at pallet5 distributor2)
	(clear crate23)
	(at pallet6 depot1)
	(clear pallet6)
	(at pallet7 depot2)
	(clear crate17)
	(at pallet8 depot0)
	(clear crate13)
	(at pallet9 depot1)
	(clear crate16)
	(at pallet10 depot0)
	(clear crate1)
	(at pallet11 distributor2)
	(clear crate22)
	(at pallet12 distributor0)
	(clear pallet12)
	(at truck0 distributor2)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 428)
	(at truck1 depot2)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 369)
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
	(at hoist6 distributor2)
	(available hoist6)
	(at hoist7 distributor2)
	(available hoist7)
	(at crate0 distributor0)
	(on crate0 pallet3)
	(= (weight crate0) 87)
	(at crate1 depot0)
	(on crate1 pallet10)
	(= (weight crate1) 54)
	(at crate2 depot1)
	(on crate2 pallet1)
	(= (weight crate2) 24)
	(at crate3 depot0)
	(on crate3 pallet8)
	(= (weight crate3) 96)
	(at crate4 depot2)
	(on crate4 pallet7)
	(= (weight crate4) 21)
	(at crate5 distributor2)
	(on crate5 pallet5)
	(= (weight crate5) 18)
	(at crate6 depot2)
	(on crate6 crate4)
	(= (weight crate6) 45)
	(at crate7 distributor1)
	(on crate7 pallet4)
	(= (weight crate7) 43)
	(at crate8 depot2)
	(on crate8 crate6)
	(= (weight crate8) 43)
	(at crate9 distributor0)
	(on crate9 crate0)
	(= (weight crate9) 82)
	(at crate10 distributor0)
	(on crate10 crate9)
	(= (weight crate10) 87)
	(at crate11 depot0)
	(on crate11 pallet0)
	(= (weight crate11) 87)
	(at crate12 distributor0)
	(on crate12 crate10)
	(= (weight crate12) 46)
	(at crate13 depot0)
	(on crate13 crate3)
	(= (weight crate13) 14)
	(at crate14 depot1)
	(on crate14 crate2)
	(= (weight crate14) 27)
	(at crate15 depot1)
	(on crate15 crate14)
	(= (weight crate15) 23)
	(at crate16 depot1)
	(on crate16 pallet9)
	(= (weight crate16) 35)
	(at crate17 depot2)
	(on crate17 crate8)
	(= (weight crate17) 96)
	(at crate18 distributor2)
	(on crate18 pallet11)
	(= (weight crate18) 84)
	(at crate19 depot0)
	(on crate19 crate11)
	(= (weight crate19) 25)
	(at crate20 distributor2)
	(on crate20 crate5)
	(= (weight crate20) 46)
	(at crate21 distributor2)
	(on crate21 crate18)
	(= (weight crate21) 48)
	(at crate22 distributor2)
	(on crate22 crate21)
	(= (weight crate22) 98)
	(at crate23 distributor2)
	(on crate23 crate20)
	(= (weight crate23) 28)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet7)
		(on crate1 crate3)
		(on crate2 crate7)
		(on crate3 pallet9)
		(on crate4 crate21)
		(on crate5 pallet0)
		(on crate6 crate20)
		(on crate7 pallet6)
		(on crate8 crate5)
		(on crate9 crate10)
		(on crate10 pallet1)
		(on crate11 pallet5)
		(on crate12 crate9)
		(on crate13 crate18)
		(on crate14 crate22)
		(on crate15 pallet2)
		(on crate16 pallet3)
		(on crate17 crate16)
		(on crate18 pallet10)
		(on crate19 crate15)
		(on crate20 crate2)
		(on crate21 crate11)
		(on crate22 pallet8)
	)
)

(:metric minimize (total-time)))
