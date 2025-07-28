; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1333 () Bool)

(assert start!1333)

(declare-fun res!5246 () Bool)

(declare-fun e!3430 () Bool)

(assert (=> start!1333 (=> (not res!5246) (not e!3430))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1333 (= res!5246 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1333 e!3430))

(assert (=> start!1333 true))

(declare-datatypes ((array!555 0))(
  ( (array!556 (arr!248 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!248 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!555)

(declare-fun array_inv!198 (array!555) Bool)

(assert (=> start!1333 (array_inv!198 xx!37)))

(declare-fun b!6418 () Bool)

(declare-fun res!5245 () Bool)

(assert (=> b!6418 (=> (not res!5245) (not e!3430))))

(declare-fun xxInv!0 (array!555) Bool)

(assert (=> b!6418 (= res!5245 (xxInv!0 xx!37))))

(declare-fun b!6419 () Bool)

(declare-fun lt!3383 () (_ BitVec 32))

(assert (=> b!6419 (= e!3430 (and (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand lt!3383 #b10000000000000000000000000000000))) (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand (bvsub e!10 lt!3383) #b10000000000000000000000000000000)))))))

(declare-fun lt!3384 () (_ BitVec 32))

(assert (=> b!6419 (= lt!3383 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3384 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3384) #b00000000000000000000000000000001)))))

(assert (=> b!6419 (= lt!3384 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1333 res!5246) b!6418))

(assert (= (and b!6418 res!5245) b!6419))

(declare-fun m!11837 () Bool)

(assert (=> start!1333 m!11837))

(declare-fun m!11839 () Bool)

(assert (=> b!6418 m!11839))

(check-sat (not b!6418) (not start!1333))
(check-sat)
