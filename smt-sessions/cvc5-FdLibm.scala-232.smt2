; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1375 () Bool)

(assert start!1375)

(declare-fun res!5474 () Bool)

(declare-fun e!3500 () Bool)

(assert (=> start!1375 (=> (not res!5474) (not e!3500))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1375 (= res!5474 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1375 e!3500))

(assert (=> start!1375 true))

(declare-datatypes ((array!564 0))(
  ( (array!565 (arr!250 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!250 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!564)

(declare-fun array_inv!200 (array!564) Bool)

(assert (=> start!1375 (array_inv!200 xx!37)))

(declare-fun b!6676 () Bool)

(declare-fun res!5473 () Bool)

(assert (=> b!6676 (=> (not res!5473) (not e!3500))))

(declare-fun xxInv!0 (array!564) Bool)

(assert (=> b!6676 (= res!5473 (xxInv!0 xx!37))))

(declare-fun lt!3449 () (_ BitVec 32))

(declare-fun lt!3448 () (_ BitVec 32))

(declare-fun b!6677 () Bool)

(assert (=> b!6677 (= e!3500 (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3449 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3449) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (= (bvand lt!3448 #b10000000000000000000000000000000) (bvand jz!27 #b10000000000000000000000000000000)) (not (= (bvand lt!3448 #b10000000000000000000000000000000) (bvand (bvadd lt!3448 jz!27) #b10000000000000000000000000000000)))))))

(assert (=> b!6677 (= lt!3449 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!6677 (= lt!3448 (bvsub (size!250 xx!37) #b00000000000000000000000000000001))))

(assert (= (and start!1375 res!5474) b!6676))

(assert (= (and b!6676 res!5473) b!6677))

(declare-fun m!13169 () Bool)

(assert (=> start!1375 m!13169))

(declare-fun m!13171 () Bool)

(assert (=> b!6676 m!13171))

(push 1)

(assert (not b!6676))

(assert (not start!1375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4142 () Bool)

(declare-fun res!5477 () Bool)

(declare-fun e!3503 () Bool)

(assert (=> d!4142 (=> (not res!5477) (not e!3503))))

(assert (=> d!4142 (= res!5477 (= (size!250 xx!37) #b00000000000000000000000000000101))))

(assert (=> d!4142 (= (xxInv!0 xx!37) e!3503)))

(declare-fun b!6680 () Bool)

(declare-fun lambda!259 () Int)

(declare-fun all5!0 (array!564 Int) Bool)

(assert (=> b!6680 (= e!3503 (all5!0 xx!37 lambda!259))))

(assert (= (and d!4142 res!5477) b!6680))

(declare-fun m!13173 () Bool)

(assert (=> b!6680 m!13173))

(assert (=> b!6676 d!4142))

(declare-fun d!4144 () Bool)

(assert (=> d!4144 (= (array_inv!200 xx!37) (bvsge (size!250 xx!37) #b00000000000000000000000000000000))))

(assert (=> start!1375 d!4144))

(push 1)

(assert (not b!6680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

