; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1337 () Bool)

(assert start!1337)

(declare-fun res!5258 () Bool)

(declare-fun e!3443 () Bool)

(assert (=> start!1337 (=> (not res!5258) (not e!3443))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1337 (= res!5258 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1337 e!3443))

(assert (=> start!1337 true))

(declare-datatypes ((array!559 0))(
  ( (array!560 (arr!250 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!250 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!559)

(declare-fun array_inv!200 (array!559) Bool)

(assert (=> start!1337 (array_inv!200 xx!37)))

(declare-fun b!6430 () Bool)

(declare-fun res!5257 () Bool)

(assert (=> b!6430 (=> (not res!5257) (not e!3443))))

(declare-fun xxInv!0 (array!559) Bool)

(assert (=> b!6430 (= res!5257 (xxInv!0 xx!37))))

(declare-fun lt!3393 () (_ BitVec 32))

(declare-fun lt!3392 () (_ BitVec 32))

(declare-fun b!6431 () Bool)

(assert (=> b!6431 (= e!3443 (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3392 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3392) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (= (bvand lt!3393 #b10000000000000000000000000000000) (bvand jz!27 #b10000000000000000000000000000000)) (not (= (bvand lt!3393 #b10000000000000000000000000000000) (bvand (bvadd lt!3393 jz!27) #b10000000000000000000000000000000)))))))

(assert (=> b!6431 (= lt!3392 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!6431 (= lt!3393 (bvsub (size!250 xx!37) #b00000000000000000000000000000001))))

(assert (= (and start!1337 res!5258) b!6430))

(assert (= (and b!6430 res!5257) b!6431))

(declare-fun m!11845 () Bool)

(assert (=> start!1337 m!11845))

(declare-fun m!11847 () Bool)

(assert (=> b!6430 m!11847))

(check-sat (not start!1337) (not b!6430))
(check-sat)
(get-model)

(declare-fun d!3421 () Bool)

(assert (=> d!3421 (= (array_inv!200 xx!37) (bvsge (size!250 xx!37) #b00000000000000000000000000000000))))

(assert (=> start!1337 d!3421))

(declare-fun d!3423 () Bool)

(declare-fun res!5261 () Bool)

(declare-fun e!3446 () Bool)

(assert (=> d!3423 (=> (not res!5261) (not e!3446))))

(assert (=> d!3423 (= res!5261 (= (size!250 xx!37) #b00000000000000000000000000000101))))

(assert (=> d!3423 (= (xxInv!0 xx!37) e!3446)))

(declare-fun b!6434 () Bool)

(declare-fun lambda!251 () Int)

(declare-fun all5!0 (array!559 Int) Bool)

(assert (=> b!6434 (= e!3446 (all5!0 xx!37 lambda!251))))

(assert (= (and d!3423 res!5261) b!6434))

(declare-fun m!11849 () Bool)

(assert (=> b!6434 m!11849))

(assert (=> b!6430 d!3423))

(check-sat (not b!6434))
(check-sat)
