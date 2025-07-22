; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!187 () Bool)

(assert start!187)

(declare-fun res!361 () Bool)

(declare-fun e!137 () Bool)

(assert (=> start!187 (=> (not res!361) (not e!137))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!187 (= res!361 (bvsle (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!187 e!137))

(assert (=> start!187 true))

(declare-fun b!161 () Bool)

(declare-fun lt!173 () (_ FloatingPoint 11 53))

(assert (=> b!161 (= e!137 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!86) (fp.leq x!86 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) lt!173)) (not (fp.leq lt!173 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!161 (= lt!173 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))

(assert (= (and start!187 res!361) b!161))

(declare-fun m!161 () Bool)

(assert (=> start!187 m!161))

(push 1)

(assert (not start!187))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

