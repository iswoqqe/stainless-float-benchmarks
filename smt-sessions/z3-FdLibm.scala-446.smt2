; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2457 () Bool)

(assert start!2457)

(declare-datatypes ((array!988 0))(
  ( (array!989 (arr!433 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!433 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!988)

(assert (=> start!2457 (and (= (size!433 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!433 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!433 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (bvsge #b00000000000000000000000000000001 (size!433 qq!34)))))

(declare-fun array_inv!382 (array!988) Bool)

(assert (=> start!2457 (array_inv!382 qq!34)))

(declare-fun bs!2322 () Bool)

(assert (= bs!2322 start!2457))

(declare-fun m!19585 () Bool)

(assert (=> bs!2322 m!19585))

(declare-fun m!19587 () Bool)

(assert (=> bs!2322 m!19587))

(check-sat (not start!2457))
(check-sat)
