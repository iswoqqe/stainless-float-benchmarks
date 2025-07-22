; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1373 () Bool)

(assert start!1373)

(declare-fun res!5467 () Bool)

(declare-fun e!3494 () Bool)

(assert (=> start!1373 (=> (not res!5467) (not e!3494))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1373 (= res!5467 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1373 e!3494))

(assert (=> start!1373 true))

(declare-datatypes ((array!562 0))(
  ( (array!563 (arr!249 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!249 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!562)

(declare-fun array_inv!199 (array!562) Bool)

(assert (=> start!1373 (array_inv!199 xx!37)))

(declare-fun b!6670 () Bool)

(declare-fun res!5468 () Bool)

(assert (=> b!6670 (=> (not res!5468) (not e!3494))))

(declare-fun xxInv!0 (array!562) Bool)

(assert (=> b!6670 (= res!5468 (xxInv!0 xx!37))))

(declare-fun b!6671 () Bool)

(declare-fun lt!3443 () (_ BitVec 32))

(assert (=> b!6671 (= e!3494 false)))

(assert (=> b!6671 (= lt!3443 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1373 res!5467) b!6670))

(assert (= (and b!6670 res!5468) b!6671))

(declare-fun m!13165 () Bool)

(assert (=> start!1373 m!13165))

(declare-fun m!13167 () Bool)

(assert (=> b!6670 m!13167))

(push 1)

(assert (not b!6670))

(assert (not start!1373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

