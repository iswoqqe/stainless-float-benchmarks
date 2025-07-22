; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1301 () Bool)

(assert start!1301)

(declare-fun res!4889 () Bool)

(declare-fun e!3341 () Bool)

(assert (=> start!1301 (=> (not res!4889) (not e!3341))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1301 (= res!4889 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1301 e!3341))

(assert (=> start!1301 true))

(declare-datatypes ((array!546 0))(
  ( (array!547 (arr!245 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!245 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!546)

(declare-fun array_inv!195 (array!546) Bool)

(assert (=> start!1301 (array_inv!195 xx!37)))

(declare-fun b!6032 () Bool)

(declare-fun res!4890 () Bool)

(assert (=> b!6032 (=> (not res!4890) (not e!3341))))

(declare-fun xxInv!0 (array!546) Bool)

(assert (=> b!6032 (= res!4890 (xxInv!0 xx!37))))

(declare-fun b!6033 () Bool)

(assert (=> b!6033 (= e!3341 (and (not (= (bvand e!10 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand (bvsub e!10 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(assert (= (and start!1301 res!4889) b!6032))

(assert (= (and b!6032 res!4890) b!6033))

(declare-fun m!10001 () Bool)

(assert (=> start!1301 m!10001))

(declare-fun m!10003 () Bool)

(assert (=> b!6032 m!10003))

(check-sat (not start!1301) (not b!6032))
(check-sat)
