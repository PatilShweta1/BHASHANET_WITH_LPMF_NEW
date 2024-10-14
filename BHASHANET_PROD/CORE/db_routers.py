class MyAppRouter:
    def db_for_read(self, model, **hints):
        """Point read operations to the appropriate database."""
        if model._meta.app_label == 'CORE' or model._meta.app_label =='discussion_forum' or model._meta.app_label =='MASS_MAIL' or model._meta.app_label =='blog':
            return 'default'
        elif model._meta.app_label == 'dashboard':
            return 'dashboard'
        return None

    def db_for_write(self, model, **hints):
        """Point write operations to the appropriate database."""
        if model._meta.app_label == 'CORE' or model._meta.app_label =='discussion_forum' or model._meta.app_label =='MASS_MAIL'or model._meta.app_label =='blog':
            return 'default'
        elif model._meta.app_label == 'dashboard':
            return 'dashboard'
        return None

    def allow_relation(self, obj1, obj2, **hints):
        """Allow relations if a model in the same database."""
        db_list = (obj1._state.db, obj2._state.db)
        if 'default' in db_list and 'dashboard' in db_list:
            return True
        return None

    def allow_migrate(self, db, app_label, model_name=None, **hints):
        """Allow migrations on the specified database."""
        if app_label == 'CORE':
            return db == 'default'
        elif app_label == 'discussion_forum':
            return db == 'default'
        elif app_label == 'MASS_MAIL':
            return db == 'default'
        elif app_label == 'blog':
            return db == 'default'
        elif app_label == 'dashboard':
            return db == 'dashboard'
        return None
