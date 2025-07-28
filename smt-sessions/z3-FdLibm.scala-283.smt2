; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1729 () Bool)

(assert start!1729)

(declare-fun res!7601 () Bool)

(declare-fun e!5022 () Bool)

(assert (=> start!1729 (=> (not res!7601) (not e!5022))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1729 (= res!7601 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1729 e!5022))

(assert (=> start!1729 true))

(declare-datatypes ((array!687 0))(
  ( (array!688 (arr!301 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!301 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!687)

(declare-fun array_inv!251 (array!687) Bool)

(assert (=> start!1729 (array_inv!251 xx!44)))

(declare-fun b!9240 () Bool)

(declare-fun res!7602 () Bool)

(assert (=> b!9240 (=> (not res!7602) (not e!5022))))

(declare-fun xxInv!0 (array!687) Bool)

(assert (=> b!9240 (= res!7602 (xxInv!0 xx!44))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4527 () (_ BitVec 32))

(declare-fun b!9241 () Bool)

(assert (=> b!9241 (= e!5022 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4527 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4527) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (let ((lhs!48 (bvadd (bvsub (size!301 xx!44) #b00000000000000000000000000000001) jz!32))) (and (= (bvand lhs!48 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!48 #b10000000000000000000000000000000) (bvand (bvadd lhs!48 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))

(assert (=> b!9241 (= lt!4527 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1729 res!7601) b!9240))

(assert (= (and b!9240 res!7602) b!9241))

(declare-fun m!15173 () Bool)

(assert (=> start!1729 m!15173))

(declare-fun m!15175 () Bool)

(assert (=> b!9240 m!15175))

(check-sat (not b!9240) (not start!1729))
(check-sat)
(get-model)

(declare-fun d!4513 () Bool)

(declare-fun res!7605 () Bool)

(declare-fun e!5026 () Bool)

(assert (=> d!4513 (=> (not res!7605) (not e!5026))))

(assert (=> d!4513 (= res!7605 (= (size!301 xx!44) #b00000000000000000000000000000101))))

(assert (=> d!4513 (= (xxInv!0 xx!44) e!5026)))

(declare-fun b!9244 () Bool)

(declare-fun lambda!478 () Int)

(declare-fun all5!0 (array!687 Int) Bool)

(assert (=> b!9244 (= e!5026 (all5!0 xx!44 lambda!478))))

(assert (= (and d!4513 res!7605) b!9244))

(declare-fun m!15177 () Bool)

(assert (=> b!9244 m!15177))

(assert (=> b!9240 d!4513))

(declare-fun d!4515 () Bool)

(assert (=> d!4515 (= (array_inv!251 xx!44) (bvsge (size!301 xx!44) #b00000000000000000000000000000000))))

(assert (=> start!1729 d!4515))

(check-sat (not b!9244))
(check-sat)
