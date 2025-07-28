; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2461 () Bool)

(assert start!2461)

(declare-datatypes ((array!992 0))(
  ( (array!993 (arr!435 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!435 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!992)

(assert (=> start!2461 (and (= (size!435 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!435 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!435 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!435 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!435 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (bvsge #b00000000000000000000000000000010 (size!435 qq!34)))))

(declare-fun array_inv!384 (array!992) Bool)

(assert (=> start!2461 (array_inv!384 qq!34)))

(declare-fun bs!2326 () Bool)

(assert (= bs!2326 start!2461))

(declare-fun m!19595 () Bool)

(assert (=> bs!2326 m!19595))

(declare-fun m!19597 () Bool)

(assert (=> bs!2326 m!19597))

(declare-fun m!19599 () Bool)

(assert (=> bs!2326 m!19599))

(check-sat (not start!2461))
(check-sat)
