; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!419 () Bool)

(assert start!419)

(declare-fun lt!386 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!419 (= lt!386 (bvand (__HI!0 x!127) #b01111111111111111111111111111111))))

(assert (=> start!419 (and (bvslt lt!386 #b01111111111100000000000000000000) (bvsle lt!386 #b00111111111010010010000111111011) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127) (fp.leq x!127 (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (not (fp.isInfinite x!127)) (not (fp.isNaN x!127)) (or false false (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127)) (not (fp.leq x!127 (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) false false))))

(assert (=> start!419 true))

(declare-fun bs!116 () Bool)

(assert (= bs!116 start!419))

(declare-fun m!359 () Bool)

(assert (=> bs!116 m!359))

(push 1)

(assert (not start!419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

