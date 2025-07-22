; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1367 () Bool)

(assert start!1367)

(declare-fun res!5449 () Bool)

(declare-fun e!3475 () Bool)

(assert (=> start!1367 (=> (not res!5449) (not e!3475))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1367 (= res!5449 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1367 e!3475))

(assert (=> start!1367 true))

(declare-datatypes ((array!556 0))(
  ( (array!557 (arr!246 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!246 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!556)

(declare-fun array_inv!196 (array!556) Bool)

(assert (=> start!1367 (array_inv!196 xx!37)))

(declare-fun b!6652 () Bool)

(declare-fun res!5450 () Bool)

(assert (=> b!6652 (=> (not res!5450) (not e!3475))))

(declare-fun xxInv!0 (array!556) Bool)

(assert (=> b!6652 (= res!5450 (xxInv!0 xx!37))))

(declare-fun b!6653 () Bool)

(declare-fun lt!3427 () (_ BitVec 32))

(assert (=> b!6653 (= e!3475 (and (= (bvand lt!3427 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lt!3427 #b10000000000000000000000000000000) (bvand (bvadd lt!3427 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!3428 () (_ BitVec 32))

(assert (=> b!6653 (= lt!3427 (ite (bvslt lt!3428 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3428))))

(assert (=> b!6653 (= lt!3428 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1367 res!5449) b!6652))

(assert (= (and b!6652 res!5450) b!6653))

(declare-fun m!13153 () Bool)

(assert (=> start!1367 m!13153))

(declare-fun m!13155 () Bool)

(assert (=> b!6652 m!13155))

(push 1)

(assert (not b!6652))

(assert (not start!1367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

