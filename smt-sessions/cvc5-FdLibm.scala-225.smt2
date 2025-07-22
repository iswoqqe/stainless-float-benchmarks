; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1357 () Bool)

(assert start!1357)

(declare-fun res!5429 () Bool)

(declare-fun e!3454 () Bool)

(assert (=> start!1357 (=> (not res!5429) (not e!3454))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1357 (= res!5429 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1357 e!3454))

(assert (=> start!1357 true))

(declare-datatypes ((array!549 0))(
  ( (array!550 (arr!243 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!243 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!549)

(declare-fun array_inv!193 (array!549) Bool)

(assert (=> start!1357 (array_inv!193 xx!37)))

(declare-fun b!6631 () Bool)

(declare-fun res!5428 () Bool)

(assert (=> b!6631 (=> (not res!5428) (not e!3454))))

(declare-fun xxInv!0 (array!549) Bool)

(assert (=> b!6631 (= res!5428 (xxInv!0 xx!37))))

(declare-fun b!6632 () Bool)

(declare-fun lt!3422 () (_ BitVec 32))

(assert (=> b!6632 (= e!3454 (not (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3422 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3422) #b00000000000000000000000000000001))) #b00000000000000000000000000000000)))))

(assert (=> b!6632 (= lt!3422 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1357 res!5429) b!6631))

(assert (= (and b!6631 res!5428) b!6632))

(declare-fun m!13139 () Bool)

(assert (=> start!1357 m!13139))

(declare-fun m!13141 () Bool)

(assert (=> b!6631 m!13141))

(push 1)

(assert (not start!1357))

(assert (not b!6631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

