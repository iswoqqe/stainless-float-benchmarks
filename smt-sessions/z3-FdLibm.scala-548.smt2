; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2915 () Bool)

(assert start!2915)

(declare-fun b_free!13 () Bool)

(declare-fun b_next!13 () Bool)

(assert (=> start!2915 (= b_free!13 (not b_next!13))))

(declare-fun tp!20 () Bool)

(declare-fun b_and!39 () Bool)

(assert (=> start!2915 (= tp!20 b_and!39)))

(declare-fun b!15881 () Bool)

(declare-fun res!12468 () Bool)

(declare-fun e!8993 () Bool)

(assert (=> b!15881 (=> (not res!12468) (not e!8993))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1349 0))(
  ( (array!1350 (arr!593 (Array (_ BitVec 32) (_ BitVec 32))) (size!593 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1349)

(declare-fun dynLambda!44 (Int (_ BitVec 32)) Bool)

(assert (=> b!15881 (= res!12468 (dynLambda!44 P!6 (select (arr!593 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!15880 () Bool)

(declare-fun res!12469 () Bool)

(assert (=> b!15880 (=> (not res!12469) (not e!8993))))

(assert (=> b!15880 (= res!12469 (dynLambda!44 P!6 (select (arr!593 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!15882 () Bool)

(declare-fun res!12471 () Bool)

(assert (=> b!15882 (=> (not res!12471) (not e!8993))))

(assert (=> b!15882 (= res!12471 (dynLambda!44 P!6 (select (arr!593 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!15883 () Bool)

(assert (=> b!15883 (= e!8993 (bvsge #b00000000000000000000000000000011 (size!593 a!13)))))

(declare-fun res!12470 () Bool)

(assert (=> start!2915 (=> (not res!12470) (not e!8993))))

(assert (=> start!2915 (= res!12470 (= (size!593 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2915 e!8993))

(declare-fun array_inv!541 (array!1349) Bool)

(assert (=> start!2915 (array_inv!541 a!13)))

(assert (=> start!2915 tp!20))

(assert (= (and start!2915 res!12470) b!15880))

(assert (= (and b!15880 res!12469) b!15881))

(assert (= (and b!15881 res!12468) b!15882))

(assert (= (and b!15882 res!12471) b!15883))

(declare-fun b_lambda!5327 () Bool)

(assert (=> (not b_lambda!5327) (not b!15881)))

(declare-fun t!217 () Bool)

(declare-fun tb!27 () Bool)

(assert (=> (and start!2915 (= P!6 P!6) t!217) tb!27))

(declare-fun result!27 () Bool)

(assert (=> tb!27 (= result!27 true)))

(assert (=> b!15881 t!217))

(declare-fun b_and!41 () Bool)

(assert (= b_and!39 (and (=> t!217 result!27) b_and!41)))

(declare-fun b_lambda!5329 () Bool)

(assert (=> (not b_lambda!5329) (not b!15880)))

(declare-fun t!219 () Bool)

(declare-fun tb!29 () Bool)

(assert (=> (and start!2915 (= P!6 P!6) t!219) tb!29))

(declare-fun result!29 () Bool)

(assert (=> tb!29 (= result!29 true)))

(assert (=> b!15880 t!219))

(declare-fun b_and!43 () Bool)

(assert (= b_and!41 (and (=> t!219 result!29) b_and!43)))

(declare-fun b_lambda!5331 () Bool)

(assert (=> (not b_lambda!5331) (not b!15882)))

(declare-fun t!221 () Bool)

(declare-fun tb!31 () Bool)

(assert (=> (and start!2915 (= P!6 P!6) t!221) tb!31))

(declare-fun result!31 () Bool)

(assert (=> tb!31 (= result!31 true)))

(assert (=> b!15882 t!221))

(declare-fun b_and!45 () Bool)

(assert (= b_and!43 (and (=> t!221 result!31) b_and!45)))

(declare-fun m!22213 () Bool)

(assert (=> b!15881 m!22213))

(assert (=> b!15881 m!22213))

(declare-fun m!22215 () Bool)

(assert (=> b!15881 m!22215))

(declare-fun m!22217 () Bool)

(assert (=> b!15880 m!22217))

(assert (=> b!15880 m!22217))

(declare-fun m!22219 () Bool)

(assert (=> b!15880 m!22219))

(declare-fun m!22221 () Bool)

(assert (=> b!15882 m!22221))

(assert (=> b!15882 m!22221))

(declare-fun m!22223 () Bool)

(assert (=> b!15882 m!22223))

(declare-fun m!22225 () Bool)

(assert (=> start!2915 m!22225))

(check-sat b_and!45 (not b_lambda!5327) (not start!2915) (not b_lambda!5331) (not b_lambda!5329) (not b_next!13))
(check-sat b_and!45 (not b_next!13))
