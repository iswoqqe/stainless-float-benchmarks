; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2427 () Bool)

(assert start!2427)

(declare-datatypes ((array!985 0))(
  ( (array!986 (arr!433 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!433 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!985)

(assert (=> start!2427 (and (= (size!433 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!433 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!433 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (bvsge #b00000000000000000000000000000001 (size!433 qq!34)))))

(declare-fun array_inv!382 (array!985) Bool)

(assert (=> start!2427 (array_inv!382 qq!34)))

(declare-fun bs!1863 () Bool)

(assert (= bs!1863 start!2427))

(declare-fun m!17759 () Bool)

(assert (=> bs!1863 m!17759))

(declare-fun m!17761 () Bool)

(assert (=> bs!1863 m!17761))

(check-sat (not start!2427))
(check-sat)
