; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1365 () Bool)

(assert start!1365)

(declare-fun res!5443 () Bool)

(declare-fun e!3469 () Bool)

(assert (=> start!1365 (=> (not res!5443) (not e!3469))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1365 (= res!5443 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1365 e!3469))

(assert (=> start!1365 true))

(declare-datatypes ((array!554 0))(
  ( (array!555 (arr!245 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!245 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!554)

(declare-fun array_inv!195 (array!554) Bool)

(assert (=> start!1365 (array_inv!195 xx!37)))

(declare-fun b!6646 () Bool)

(declare-fun res!5444 () Bool)

(assert (=> b!6646 (=> (not res!5444) (not e!3469))))

(declare-fun xxInv!0 (array!554) Bool)

(assert (=> b!6646 (= res!5444 (xxInv!0 xx!37))))

(declare-fun b!6647 () Bool)

(assert (=> b!6647 (= e!3469 (and (not (= (bvand e!10 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand (bvsub e!10 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(assert (= (and start!1365 res!5443) b!6646))

(assert (= (and b!6646 res!5444) b!6647))

(declare-fun m!13149 () Bool)

(assert (=> start!1365 m!13149))

(declare-fun m!13151 () Bool)

(assert (=> b!6646 m!13151))

(push 1)

(assert (not b!6646))

(assert (not start!1365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

