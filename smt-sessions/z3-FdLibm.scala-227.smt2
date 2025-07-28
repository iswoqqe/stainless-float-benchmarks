; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1327 () Bool)

(assert start!1327)

(declare-fun res!5227 () Bool)

(declare-fun e!3412 () Bool)

(assert (=> start!1327 (=> (not res!5227) (not e!3412))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1327 (= res!5227 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1327 e!3412))

(assert (=> start!1327 true))

(declare-datatypes ((array!549 0))(
  ( (array!550 (arr!245 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!245 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!549)

(declare-fun array_inv!195 (array!549) Bool)

(assert (=> start!1327 (array_inv!195 xx!37)))

(declare-fun b!6400 () Bool)

(declare-fun res!5228 () Bool)

(assert (=> b!6400 (=> (not res!5228) (not e!3412))))

(declare-fun xxInv!0 (array!549) Bool)

(assert (=> b!6400 (= res!5228 (xxInv!0 xx!37))))

(declare-fun b!6401 () Bool)

(assert (=> b!6401 (= e!3412 (and (not (= (bvand e!10 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand (bvsub e!10 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(assert (= (and start!1327 res!5227) b!6400))

(assert (= (and b!6400 res!5228) b!6401))

(declare-fun m!11825 () Bool)

(assert (=> start!1327 m!11825))

(declare-fun m!11827 () Bool)

(assert (=> b!6400 m!11827))

(check-sat (not b!6400) (not start!1327))
(check-sat)
